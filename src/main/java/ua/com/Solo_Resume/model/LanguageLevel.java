package ua.com.Solo_Resume.model;

public enum LanguageLevel {

    BEGGINER,

    ELEMENTARY,

    PRE_INTERMEDIATE,

    INTERMEDIATE,

    UPPER_INTERMEDIATE,

    ADVANCED,

    PROFICIENCY;

    public String getDbValue() {
        return name().toLowerCase();
    }
}
