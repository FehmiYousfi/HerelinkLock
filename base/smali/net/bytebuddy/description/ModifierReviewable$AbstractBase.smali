.class public abstract Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;
.super Ljava/lang/Object;
.source "ModifierReviewable.java"

# interfaces
.implements Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForFieldDescription;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForParameterDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/ModifierReviewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private matchesMask(I)Z
    .locals 1

    .line 523
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getEnumerationState()Lnet/bytebuddy/description/modifier/EnumerationState;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;

    :goto_0
    return-object v0
.end method

.method public getFieldManifestation()Lnet/bytebuddy/description/modifier/FieldManifestation;
    .locals 4

    .line 448
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    and-int/lit16 v1, v0, 0xd0

    if-eqz v1, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x40

    if-eq v1, v2, :cond_2

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    .line 457
    sget-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->VOLATILE_TRANSIENT:Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v0

    .line 461
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_1
    sget-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->TRANSIENT:Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v0

    .line 453
    :cond_2
    sget-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->VOLATILE:Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v0

    .line 451
    :cond_3
    sget-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->FINAL:Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v0

    .line 459
    :cond_4
    sget-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v0
.end method

.method public getMethodManifestation()Lnet/bytebuddy/description/modifier/MethodManifestation;
    .locals 4

    .line 474
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    and-int/lit16 v1, v0, 0x550

    if-eqz v1, :cond_6

    const/16 v2, 0x10

    if-eq v1, v2, :cond_5

    const/16 v2, 0x40

    if-eq v1, v2, :cond_4

    const/16 v2, 0x50

    if-eq v1, v2, :cond_3

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    const/16 v2, 0x110

    if-eq v1, v2, :cond_1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    .line 487
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v0

    .line 491
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :cond_1
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL_NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v0

    .line 479
    :cond_2
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v0

    .line 485
    :cond_3
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL_BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v0

    .line 483
    :cond_4
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v0

    .line 481
    :cond_5
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v0

    .line 489
    :cond_6
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v0
.end method

.method public getMethodStrictness()Lnet/bytebuddy/description/modifier/MethodStrictness;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/MethodStrictness;->STRICT:Lnet/bytebuddy/description/modifier/MethodStrictness;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodStrictness;->PLAIN:Lnet/bytebuddy/description/modifier/MethodStrictness;

    :goto_0
    return-object v0
.end method

.method public getOwnership()Lnet/bytebuddy/description/modifier/Ownership;
    .locals 1

    .line 415
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->MEMBER:Lnet/bytebuddy/description/modifier/Ownership;

    :goto_0
    return-object v0
.end method

.method public getParameterManifestation()Lnet/bytebuddy/description/modifier/ParameterManifestation;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/ParameterManifestation;->FINAL:Lnet/bytebuddy/description/modifier/ParameterManifestation;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/ParameterManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/ParameterManifestation;

    :goto_0
    return-object v0
.end method

.method public getProvisioningState()Lnet/bytebuddy/description/modifier/ProvisioningState;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isMandated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/ProvisioningState;->MANDATED:Lnet/bytebuddy/description/modifier/ProvisioningState;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/ProvisioningState;->PLAIN:Lnet/bytebuddy/description/modifier/ProvisioningState;

    :goto_0
    return-object v0
.end method

.method public getSynchronizationState()Lnet/bytebuddy/description/modifier/SynchronizationState;
    .locals 1

    .line 467
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isSynchronized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/SynchronizationState;->SYNCHRONIZED:Lnet/bytebuddy/description/modifier/SynchronizationState;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/SynchronizationState;->PLAIN:Lnet/bytebuddy/description/modifier/SynchronizationState;

    :goto_0
    return-object v0
.end method

.method public getSyntheticState()Lnet/bytebuddy/description/modifier/SyntheticState;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/SyntheticState;->SYNTHETIC:Lnet/bytebuddy/description/modifier/SyntheticState;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/modifier/SyntheticState;->PLAIN:Lnet/bytebuddy/description/modifier/SyntheticState;

    :goto_0
    return-object v0
.end method

.method public getTypeManifestation()Lnet/bytebuddy/description/modifier/TypeManifestation;
    .locals 4

    .line 429
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    and-int/lit16 v1, v0, 0x2610

    if-eqz v1, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x400

    if-eq v1, v2, :cond_2

    const/16 v2, 0x600

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2600

    if-ne v1, v2, :cond_0

    .line 438
    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v0

    .line 442
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_1
    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v0

    .line 434
    :cond_2
    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v0

    .line 432
    :cond_3
    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v0

    .line 440
    :cond_4
    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v0
.end method

.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 4

    .line 398
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->getModifiers()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 403
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PROTECTED:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0

    .line 409
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_1
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0

    .line 401
    :cond_2
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0

    .line 405
    :cond_3
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    const/16 v0, 0x400

    .line 291
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isAnnotation()Z
    .locals 1

    const/16 v0, 0x2000

    .line 361
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isBridge()Z
    .locals 1

    const/16 v0, 0x40

    .line 351
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    const/high16 v0, 0x20000

    .line 356
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    const/16 v0, 0x4000

    .line 366
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    const/16 v0, 0x10

    .line 296
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    const/16 v0, 0x200

    .line 371
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isMandated()Z
    .locals 1

    const v0, 0x8000

    .line 341
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isNative()Z
    .locals 1

    const/16 v0, 0x100

    .line 326
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isPackagePrivate()Z
    .locals 1

    .line 316
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    const/4 v0, 0x2

    .line 321
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    const/4 v0, 0x4

    .line 311
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    const/4 v0, 0x1

    .line 306
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    const/16 v0, 0x8

    .line 301
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isStrict()Z
    .locals 1

    const/16 v0, 0x800

    .line 336
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isSynchronized()Z
    .locals 1

    const/16 v0, 0x20

    .line 331
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    const/16 v0, 0x1000

    .line 346
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isTransient()Z
    .locals 1

    const/16 v0, 0x80

    .line 376
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    const/16 v0, 0x80

    .line 386
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    const/16 v0, 0x40

    .line 381
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->matchesMask(I)Z

    move-result v0

    return v0
.end method
