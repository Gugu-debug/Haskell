-- Leitura  de arquivo:  readFile :: FilePath -> IO String
-- Escrita  de arquivo:  writeFile :: FilePath -> String -> IO ()
-- Edicoes  de arquivo:  appendFile :: FilePath -> String -> IO ()
-- Abertura de arquivos: openFile :: FilePath -> IOMode -> IO Handle
-- Sobrescreve arquivos: hPutStrLn :: Handle -> String -> IO ()
-- Fecha um    arquivo : hClose :: Handle -> IO ()
-- data IOMode = ReadMode | WriteMode | AppendMode | ReadWriteMode

import System.IO -- Biblioteca para utilizar funcoes de arquivos
import Data.Char -- Biblioteca para utilizar funcoes de caracteres

main :: IO ()
main = do
    putStr ("Digite um caminho: ")
    caminho <- getLine
    arquivo <- openFile caminho ReadMode
    conteudo <- hGetContents arquivo
    let edicao = map toUpper conteudo
    putStrLn edicao
    hClose arquivo
