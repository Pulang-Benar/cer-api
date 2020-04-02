package io.github.xaphira.feign.service;

import org.springframework.core.io.Resource;

import io.github.xaphira.feign.dto.file.FileMetadataDto;

public interface FileGenericService {
	
	public FileMetadataDto putFile(String filePath, String filename, byte[] fileContent) throws Exception;
	
	public Resource getFile(String checksum, String path) throws Exception;
	
	public void removeAllFiles(String path) throws Exception;

}
