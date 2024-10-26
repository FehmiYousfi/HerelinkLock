.class public Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
.super Ljava/io/InputStream;
.source "ZipInputStream.java"


# instance fields
.field private canSkipExtendedLocalFileHeader:Z

.field private crc32:Ljava/util/zip/CRC32;

.field private decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

.field private endOfEntryBuffer:[B

.field private entryEOFReached:Z

.field private headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

.field private inputStream:Ljava/io/PushbackInputStream;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private password:[C

.field private streamClosed:Z

.field private zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    move-object v1, v0

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0, p2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V
    .locals 2

    .line 69
    new-instance v0, Lnet/lingala/zip4j/model/Zip4jConfig;

    const/16 v1, 0x1000

    invoke-direct {v0, p3, v1}, Lnet/lingala/zip4j/model/Zip4jConfig;-><init>(Ljava/nio/charset/Charset;I)V

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderReader;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/HeaderReader;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    .line 49
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    .line 53
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    .line 54
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    .line 73
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    .line 78
    iput-object p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    .line 79
    iput-object p3, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertStreamOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIfZip64ExtraDataRecordPresentInLFH(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 280
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 281
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private endOfCompressedDataReached()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->pushBackInputStreamIfNecessary(Ljava/io/PushbackInputStream;)V

    .line 213
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->endOfEntryReached(Ljava/io/InputStream;)V

    .line 215
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->readExtendedLocalFileHeaderIfPresent()V

    .line 216
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->verifyCrc()V

    .line 217
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->resetFields()V

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    return-void
.end method

.method private getCompressedSize(Lnet/lingala/zip4j/model/LocalFileHeader;)J
    .locals 4

    .line 318
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v0

    return-wide v0

    .line 322
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 326
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getEncryptionHeaderSize(Lnet/lingala/zip4j/model/LocalFileHeader;)I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getEncryptionHeaderSize(Lnet/lingala/zip4j/model/LocalFileHeader;)I
    .locals 3

    .line 330
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 334
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result p1

    add-int/2addr p1, v2

    return p1

    .line 337
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private initializeCipherInputStream(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    .line 233
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_1

    .line 234
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    .line 235
    :cond_1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_2

    .line 236
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Entry [%s] Strong Encryption not supported"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 239
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {p2, p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p2
.end method

.method private initializeDecompressorForThisEntry(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
    .locals 1

    .line 245
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p2

    .line 247
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne p2, v0, :cond_0

    .line 248
    new-instance p2, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;I)V

    return-object p2

    .line 251
    :cond_0
    new-instance p2, Lnet/lingala/zip4j/io/inputstream/StoreInputStream;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/io/inputstream/StoreInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V

    return-object p2
.end method

.method private initializeEntryInputStream(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getCompressedSize(Lnet/lingala/zip4j/model/LocalFileHeader;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 223
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeCipherInputStream(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/CipherInputStream;

    move-result-object v0

    .line 224
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeDecompressorForThisEntry(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    move-result-object p1

    return-object p1
.end method

.method private isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z
    .locals 1

    .line 360
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isEntryDirectory(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    .line 314
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

.method private readExtendedLocalFileHeaderIfPresent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 260
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->checkIfZip64ExtraDataRecordPresentInLFH(Ljava/util/List;)Z

    move-result v2

    .line 259
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readDataDescriptor(Ljava/io/InputStream;Z)Lnet/lingala/zip4j/model/DataDescriptor;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 262
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 263
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private readUntilEndOfEntry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 346
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    if-nez v0, :cond_2

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 351
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    .line 355
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    return-void
.end method

.method private resetFields()V
    .locals 1

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 310
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method private verifyCrc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 291
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/enums/AesVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc()J

    move-result-wide v0

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 297
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 299
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 303
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reached end of entry, but crc verification failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1

    :cond_2
    return-void
.end method

.method private verifyLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEntryDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_1

    .line 269
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid local file header for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->assertStreamOpen()V

    .line 193
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->close()V

    :cond_1
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    return-void
.end method

.method public getNextEntry()Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->readUntilEndOfEntry()V

    .line 91
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readLocalFileHeader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_1
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->verifyLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 98
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 101
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    .line 102
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 103
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 107
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result p1

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDirectory(Z)V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    goto :goto_0

    .line 110
    :cond_2
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    .line 113
    :goto_0
    iget-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeEntryInputStream(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    .line 114
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    .line 115
    iget-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    return-object p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 121
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 127
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    if-nez v0, :cond_6

    if-ltz p3, :cond_5

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 155
    :cond_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 160
    :cond_2
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_3

    .line 163
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfCompressedDataReached()V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p3

    :catch_0
    move-exception p1

    .line 170
    iget-object p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 171
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {p2, p3, p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p2

    .line 174
    :cond_4
    throw p1

    .line 142
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative read length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPassword([C)V
    .locals 0

    .line 204
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    return-void
.end method
