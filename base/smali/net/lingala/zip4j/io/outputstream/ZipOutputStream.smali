.class public Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
.super Ljava/io/OutputStream;
.source "ZipOutputStream.java"


# instance fields
.field private compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

.field private countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

.field private crc32:Ljava/util/zip/CRC32;

.field private entryClosed:Z

.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

.field private headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private password:[C

.field private rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private streamClosed:Z

.field private uncompressedSizeForThisEntry:J

.field private zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, p2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lnet/lingala/zip4j/model/Zip4jConfig;

    const/16 v1, 0x1000

    invoke-direct {v0, p3, v1}, Lnet/lingala/zip4j/model/Zip4jConfig;-><init>(Ljava/nio/charset/Charset;I)V

    new-instance p3, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p3}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;Lnet/lingala/zip4j/model/ZipModel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    new-instance v0, Lnet/lingala/zip4j/headers/FileHeaderFactory;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/FileHeaderFactory;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    .line 35
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/HeaderWriter;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 36
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    .line 37
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    .line 61
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 65
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .line 66
    iput-object p2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    .line 67
    iput-object p3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 68
    iget-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-direct {p0, p4, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeZipModel(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    .line 70
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->writeSplitZipHeaderIfApplicable()V

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureStreamOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeAndWriteFileHeader(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v2

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .line 163
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getCurrentSplitFileCounter()I

    move-result v3

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    iget-object v5, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object v1, p1

    .line 162
    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->generateFileHeader(Lnet/lingala/zip4j/model/ZipParameters;ZILjava/nio/charset/Charset;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 164
    iget-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getOffsetForNextEntry()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 166
    iget-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->generateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 167
    iget-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private initializeCipherOutputStream(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    if-eqz v0, :cond_4

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_1

    .line 201
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    return-object v0

    .line 202
    :cond_1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_2

    .line 203
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    return-object v0

    .line 204
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p1, p2, :cond_3

    .line 205
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " encryption method is not supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid encryption method"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "password not set"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initializeCompressedOutputStream(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
    .locals 2

    .line 213
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_0

    .line 214
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object p2

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V

    return-object v0

    .line 217
    :cond_0
    new-instance p2, Lnet/lingala/zip4j/io/outputstream/StoreOutputStream;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/io/outputstream/StoreOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V

    return-object p2
.end method

.method private initializeCompressedOutputStream(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 186
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCipherOutputStream(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;

    move-result-object v0

    .line 187
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCompressedOutputStream(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    move-result-object p1

    return-object p1
.end method

.method private initializeZipModel(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 2

    if-nez p1, :cond_0

    .line 150
    new-instance p1, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    .line 153
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 155
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getSplitLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    :cond_1
    return-object p1
.end method

.method private isEntryDirectory(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 171
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    .line 172
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 173
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->close()V

    return-void
.end method

.method private verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 4

    .line 221
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_1

    .line 222
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntrySize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->isEntryDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private writeCrc(Lnet/lingala/zip4j/model/FileHeader;)Z
    .locals 3

    .line 230
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 236
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->ONE:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/enums/AesVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private writeSplitZipHeaderIfApplicable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->closeEntry()Lnet/lingala/zip4j/model/FileHeader;

    .line 131
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getNumberOfBytesWritten()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 132
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 133
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->close()V

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    return-void
.end method

.method public closeEntry()Lnet/lingala/zip4j/model/FileHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->closeEntry()V

    .line 102
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->getCompressedSize()J

    move-result-wide v0

    .line 103
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 104
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 106
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-wide v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 107
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-wide v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 109
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->writeCrc(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setCrc(J)V

    .line 111
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    .line 114
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getLocalFileHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)V

    .line 120
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->reset()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    .line 122
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    return-object v0
.end method

.method public putNextEntry(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 75
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeAndWriteFileHeader(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 80
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCompressedOutputStream(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->ensureStreamOpen()V

    .line 139
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 85
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->ensureStreamOpen()V

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 95
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->write([BII)V

    .line 96
    iget-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    return-void
.end method
