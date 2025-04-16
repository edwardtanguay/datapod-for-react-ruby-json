<?php

/**
 * File utility methods
 */
class qfil {
	/**
	 * Reads a file and returns its lines as an array of strings.
	 * 
	 * Example:
	 * $lines = qfil::getLinesFromFile('../data/flashcards.txt');
	 * 
	 * @param string $filePath Path to the file to read
	 * @return array<string> Array of lines from the file, or empty array if file cannot be read
	 */
	public static function getLinesFromFile(string $filePath): array {
		try {
			$fileContent = file_get_contents($filePath);
			if ($fileContent === false) {
				qcli::message("Error reading file at {$filePath}", "error");
				return [];
			}
			return explode(PHP_EOL, $fileContent);
		} catch (Exception $error) {
			qcli::message("Error reading file at {$filePath}: " . $error->getMessage(), "error");
			return [];
		}
	}
}
