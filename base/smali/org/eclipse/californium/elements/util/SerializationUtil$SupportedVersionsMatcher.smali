.class public Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;
.super Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;
.source "SerializationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SerializationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedVersionsMatcher"
.end annotation


# instance fields
.field private readVersion:I


# direct methods
.method private varargs constructor <init>([I)V
    .locals 1

    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;-><init>(Z[I)V

    .line 598
    iput v0, p0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;->readVersion:I

    return-void
.end method

.method synthetic constructor <init>([ILorg/eclipse/californium/elements/util/SerializationUtil$1;)V
    .locals 0

    .line 584
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;-><init>([I)V

    return-void
.end method


# virtual methods
.method public getReadVersion()I
    .locals 1

    .line 619
    iget v0, p0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;->readVersion:I

    return v0
.end method

.method public supports(I)Z
    .locals 1

    .line 603
    invoke-super {p0, p1}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;->supports(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iput p1, p0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;->readVersion:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 607
    iput p1, p0, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;->readVersion:I

    return p1
.end method
