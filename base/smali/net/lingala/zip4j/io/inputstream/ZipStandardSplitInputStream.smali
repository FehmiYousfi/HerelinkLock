.class public Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;
.super Lnet/lingala/zip4j/io/inputstream/SplitInputStream;
.source "ZipStandardSplitInputStream.java"


# instance fields
.field private lastSplitZipFileNumber:I


# direct methods
.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;-><init>(Ljava/io/File;ZI)V

    .line 16
    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;->lastSplitZipFileNumber:I

    return-void
.end method


# virtual methods
.method protected getNextSplitFile(I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;->lastSplitZipFileNumber:I

    if-ne p1, v0, :cond_0

    .line 22
    iget-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;->zipFile:Ljava/io/File;

    return-object p1

    .line 25
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-lt p1, v1, :cond_1

    const-string v1, ".z"

    goto :goto_0

    :cond_1
    const-string v1, ".z0"

    .line 31
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "."

    .line 32
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 31
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method
