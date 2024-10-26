.class public Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;
.super Ljava/lang/Object;
.source "FieldAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Prepared"
.end annotation


# instance fields
.field private final fieldLocator:Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

.field private final fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;Lnet/bytebuddy/dynamic/scaffold/FieldLocator;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    .line 320
    iput-object p2, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldLocator:Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 299
    instance-of p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 299
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldLocator:Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldLocator:Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

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

    .line 299
    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

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

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldLocator:Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

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

.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/field/FieldDescription;
    .locals 3

    .line 325
    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldLocator:Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object p1

    return-object p1

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve field for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " using "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;->fieldLocator:Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
