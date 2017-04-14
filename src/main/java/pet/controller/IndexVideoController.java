package pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import pet.model.IndexVideo;
import pet.service.IndexVideoService;
import pet.util.AutoUUID;
import pet.util.PagedResult;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

/**
 * Created by developer on 2017/4/12.
 */
@Controller
public class IndexVideoController extends BaseController {
    @Autowired
    IndexVideoService indexVideoService;
     private static final DateTimeFormatter FORMAT = DateTimeFormatter.ofPattern("uuuu-MM-dd");
    @RequestMapping("/videos")
    @ResponseBody
    public PagedResult<IndexVideo> showVideos(Integer pageNumber, Integer pageSize, String userName){
        PagedResult<IndexVideo> pagedResult;
        if ("".equals(userName)) {
            pagedResult = indexVideoService.findByPage("%", pageNumber, pageSize);
        } else {
            pagedResult = indexVideoService.findByPage(userName, pageNumber, pageSize);
        }
        return pagedResult;
    }

    @RequestMapping("/addVideos")
    public String addVideos(HttpServletRequest request, @RequestParam("videoName") String videoName,
                            @RequestParam("videoImage") MultipartFile file,
                            @RequestParam("video") MultipartFile multipartFile) throws IOException {
        String imagePath = request.getSession().getServletContext().getRealPath("uploadImg/index-videos");
        String filename = new Date().getTime()+".jpg";
        File targetFile =  new File(imagePath,filename);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        file.transferTo(targetFile);
        String videosName = new Date().getTime()+".mp4";
        File videos = new File(imagePath,videosName);
        multipartFile.transferTo(videos);
        String videoId = AutoUUID.getUUID();
        Date date = new Date();
        java.sql.Date createdOn =  new java.sql.Date(date.getTime());
        indexVideoService.addVideos(videoName,filename,videosName,videoId,createdOn);
        return "redirect:/background/indexVideo";
    }

    @RequestMapping("show/videos")
    @ResponseBody
    public List<IndexVideo> showVideos(ModelMap modelMap){
        List<IndexVideo> indexVideos = indexVideoService.selectAllVideos();
        indexVideos.forEach(e->{
            e.setVideoImage("/pets-town/uploadImg/index-videos/"+e.getVideoImage());
            e.setVideoUrl("/pets-town/uploadImg/index-videos/"+e.getVideoUrl());
        });
        modelMap.addAllAttributes(indexVideos);
        return  indexVideos;
    }
}
