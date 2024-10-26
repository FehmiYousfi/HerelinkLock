.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForEnumerationDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$IncompatibleRuntimeType;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$UnknownRuntimeEnumeration;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Enum<",
        "TU;>;>",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V
    .locals 0

    .line 1366
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 1367
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            "TV;>;"
        }
    .end annotation

    .line 1378
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;-><init>(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 1395
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    .line 1400
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 1390
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->load(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;-><init>(Ljava/lang/Enum;)V

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1354
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->resolve()Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    .locals 1

    .line 1383
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1405
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
