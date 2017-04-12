package pet.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class IndexVideo {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    private String videoId;

    private Integer id;

    private String videoName;

    private String videoUrl;

    private Date createdOn;

    private String videoImage;

    public String getVideoId() {
        return videoId;
    }

    public void setVideoId(String videoId) {
        this.videoId = videoId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVideoName() {
        return videoName;
    }
    public IndexVideo() {

    }

    public IndexVideo(String videoId, String videoName, String videoUrl, Date createdOn, String videoImage) {
        this.videoId = videoId;
        this.videoName = videoName;
        this.videoUrl = videoUrl;
        this.createdOn = createdOn;
        this.videoImage = videoImage;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName == null ? null : videoName.trim();
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl == null ? null : videoUrl.trim();
    }

    public String getCreatedOn() {
        return dateFormat.format(createdOn);
    }

    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    public String getVideoImage() {
        return videoImage;
    }

    public void setVideoImage(String videoImage) {
        this.videoImage = videoImage == null ? null : videoImage.trim();
    }
}