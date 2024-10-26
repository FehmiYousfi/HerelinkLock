.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAnnotationDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$IncompatibleRuntimeType;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V
    .locals 0

    .line 1204
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 1205
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            "TV;>;"
        }
    .end annotation

    .line 1218
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-direct {v1, p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;-><init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 1235
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

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

    .line 1240
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

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

    .line 1229
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 1230
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->load()Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1192
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 1

    .line 1223
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1245
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
