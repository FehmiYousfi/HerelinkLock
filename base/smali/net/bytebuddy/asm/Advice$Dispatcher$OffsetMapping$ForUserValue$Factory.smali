.class public Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;"
    }
.end annotation


# instance fields
.field private final dynamicValue:Lnet/bytebuddy/asm/Advice$DynamicValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/asm/Advice$DynamicValue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/asm/Advice$DynamicValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Lnet/bytebuddy/asm/Advice$DynamicValue<",
            "TS;>;)V"
        }
    .end annotation

    .line 3682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3683
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->type:Ljava/lang/Class;

    .line 3684
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->dynamicValue:Lnet/bytebuddy/asm/Advice$DynamicValue;

    return-void
.end method

.method protected static of(Ljava/lang/Class;Lnet/bytebuddy/asm/Advice$DynamicValue;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$DynamicValue<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;"
        }
    .end annotation

    .line 3696
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/asm/Advice$DynamicValue;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 3663
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3663
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->type:Ljava/lang/Class;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->type:Ljava/lang/Class;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->dynamicValue:Lnet/bytebuddy/asm/Advice$DynamicValue;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->dynamicValue:Lnet/bytebuddy/asm/Advice$DynamicValue;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 3663
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->type:Ljava/lang/Class;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->dynamicValue:Lnet/bytebuddy/asm/Advice$DynamicValue;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
    .locals 3

    .line 3701
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3702
    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->UNDEFINED:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue$Factory;->dynamicValue:Lnet/bytebuddy/asm/Advice$DynamicValue;

    invoke-direct {v1, p1, v0, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue;-><init>(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$DynamicValue;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method
