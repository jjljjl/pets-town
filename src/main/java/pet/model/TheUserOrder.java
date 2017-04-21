package pet.model;

import java.util.Date;

public class TheUserOrder {
    private Integer id;

    private Integer uId;

    private Double petPrice;

    private Integer petCount;

    private Date createOn;

    private Integer pId;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Double getPetPrice() {
        return petPrice;
    }

    public void setPetPrice(Double petPrice) {
        this.petPrice = petPrice;
    }

    public Integer getPetCount() {
        return petCount;
    }

    public void setPetCount(Integer petCount) {
        this.petCount = petCount;
    }

    public Date getCreateOn() {
        return createOn;
    }

    public void setCreateOn(Date createOn) {
        this.createOn = createOn;
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}