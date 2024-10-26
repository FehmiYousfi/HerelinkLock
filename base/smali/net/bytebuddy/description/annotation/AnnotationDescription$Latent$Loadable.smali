.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;
.super Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase$ForPrepared;
.source "AnnotationDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Loadable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase$ForPrepared<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    .line 763
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase$ForPrepared;-><init>()V

    .line 764
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 779
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    return-object p1
.end method

.method public load()Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-static {v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->access$000(Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;

    move-result-object p1

    return-object p1
.end method
