.class public Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Factory"
.end annotation


# instance fields
.field private final readOnly:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    .line 3576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3577
    iput-boolean p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;->readOnly:Z

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;
    .locals 2

    .line 3589
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p0

    const-class v0, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    .line 3590
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p0

    .line 3591
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$1200()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 3592
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    .line 3593
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Illegal;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lnet/bytebuddy/asm/Advice$Thrown;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Illegal;-><init>([Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;

    invoke-direct {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;-><init>(Z)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 3563
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3563
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;->readOnly:Z

    iget-boolean p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;->readOnly:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 3563
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;->readOnly:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
    .locals 3

    .line 3598
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/asm/Advice$Thrown;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3600
    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;->UNDEFINED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;

    return-object p1

    .line 3601
    :cond_0
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable$Factory;->readOnly:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/Advice$Thrown;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Thrown;->readOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3602
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use writable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on read-only parameter"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3604
    :cond_2
    :goto_0
    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$Thrown;

    invoke-direct {v1, p1, v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$Thrown;)V

    return-object v1
.end method
