package pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import pet.service.DetailImgeService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by developer on 2017/4/14.
 */
@Controller
public class DetailImageController {
  @Autowired
    private DetailImgeService detailImgeService;

    /**
     * 为每个宠物上传四张详细图片
     */


    @RequestMapping("addImage")
    public String addImage(HttpServletRequest request, @RequestParam("pId") Integer pId,
                           @RequestParam("petImage") MultipartFile multipartFile[]) throws IOException {
        String path = request.getSession().getServletContext().getRealPath("uploadImg/detail-image");
        List<String> fileName = new ArrayList<>();
        File targetFile;
        for(int i = 0 ; i<multipartFile.length;i++){
           String filename = new Date().getTime() +".jpg";
            targetFile =  new File(path,filename);
            if(!targetFile.exists()){
                targetFile.mkdirs();
            }
            multipartFile[i].transferTo(targetFile);
            fileName.add(filename);
        }
        detailImgeService.insertInto(pId,fileName);
        return "redirect:/background/showPets";
    }
}
