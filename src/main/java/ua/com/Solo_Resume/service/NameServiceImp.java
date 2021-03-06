package ua.com.Solo_Resume.service;

import org.apache.commons.lang.WordUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
public class NameServiceImp implements NameServise {
    private static final Logger logger = Logger.getLogger(NameServiceImp.class);

    @Override
    public String convertName(String name) {
        logger.debug("solomiia lala");
        if (name.contains("-")) {
            String[] parts = name.split("-");
            return WordUtils.capitalize(parts[0]) + " " + WordUtils.capitalize(parts[1]);
        }
        return WordUtils.capitalize(name);
    }
}