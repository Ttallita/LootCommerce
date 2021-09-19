package utils;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class Criptografia {

    public static String getSha512(String input) {
        String criptografada = null;

        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-512");
            digest.reset();
            digest.update(input.getBytes(StandardCharsets.UTF_8));
            criptografada = String.format("%064x", new BigInteger(1, digest.digest()));

        }catch (Exception e) {
            System.err.println("Erro ao criptografar" + e.getMessage());
        }

        return criptografada;
    }
}
