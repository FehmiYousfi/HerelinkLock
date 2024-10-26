.class public Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;
.super Ljava/lang/Object;
.source "SerializationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SerializationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedVersions"
.end annotation


# instance fields
.field private final versions:[I


# direct methods
.method protected varargs constructor <init>(Z[I)V
    .locals 1

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3

    .line 539
    array-length v0, p2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 542
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;->versions:[I

    const/4 p1, 0x0

    .line 543
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;->supports(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 544
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Versions must not contain NO_VERSION!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Versions must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 537
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Versions must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([I)V
    .locals 1

    const/4 v0, 0x1

    .line 525
    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;-><init>(Z[I)V

    return-void
.end method


# virtual methods
.method public matcher()Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;
    .locals 3

    .line 577
    new-instance v0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;->versions:[I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;-><init>([ILorg/eclipse/californium/elements/util/SerializationUtil$1;)V

    return-object v0
.end method

.method public supports(I)Z
    .locals 5

    .line 556
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;->versions:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;->versions:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
