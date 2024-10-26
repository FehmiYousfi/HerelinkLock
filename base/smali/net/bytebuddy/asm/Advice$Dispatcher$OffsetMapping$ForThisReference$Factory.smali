.class public final enum Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

.field public static final enum READ_ONLY:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

.field public static final enum READ_WRITE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;


# instance fields
.field private final readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2469
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "READ_ONLY"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->READ_ONLY:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    .line 2474
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    const-string v3, "READ_WRITE"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->READ_WRITE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    .line 2464
    sget-object v3, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->READ_ONLY:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    aput-object v3, v0, v2

    sget-object v2, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->READ_WRITE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2486
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2487
    iput-boolean p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->readOnly:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;
    .locals 1

    .line 2464
    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;
    .locals 1

    .line 2464
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
    .locals 3

    .line 2492
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/asm/Advice$This;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2494
    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->UNDEFINED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;

    return-object p1

    .line 2495
    :cond_0
    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference$Factory;->readOnly:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/Advice$This;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$This;->readOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2496
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write to this reference for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in read-only context"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2498
    :cond_2
    :goto_0
    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$This;

    invoke-direct {v1, p1, v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$This;)V

    return-object v1
.end method
