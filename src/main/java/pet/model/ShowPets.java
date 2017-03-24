package pet.model;

public class ShowPets {
    private Integer id;

    private String petName;

    private Double petPrice;

    private Integer petType;

    private Integer petAge;

    private String petImage;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName == null ? null : petName.trim();
    }

    public Double getPetPrice() {
        return petPrice;
    }

    public void setPetPrice(Double petPrice) {
        this.petPrice = petPrice;
    }

    public Integer getPetType() {
        return petType;
    }

    public void setPetType(Integer petType) {
        this.petType = petType;
    }

    public Integer getPetAge() {
        return petAge;
    }

    public void setPetAge(Integer petAge) {
        this.petAge = petAge;
    }

    public String getPetImage() {
        return petImage;
    }

    public void setPetImage(String petImage) {
        this.petImage = petImage == null ? null : petImage.trim();
    }
}