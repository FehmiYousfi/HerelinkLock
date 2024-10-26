.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$IncompatibleRuntimeType;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncompatibleRuntimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private final incompatibleType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1326
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;-><init>()V

    .line 1327
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$IncompatibleRuntimeType;->incompatibleType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
    .locals 1

    .line 1332
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-object v0
.end method

.method public represents(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1314
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$IncompatibleRuntimeType;->resolve()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Ljava/lang/annotation/Annotation;
    .locals 3

    .line 1337
    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$IncompatibleRuntimeType;->incompatibleType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
