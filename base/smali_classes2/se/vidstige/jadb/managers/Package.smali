.class public Lse/vidstige/jadb/managers/Package;
.super Ljava/lang/Object;
.source "Package.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lse/vidstige/jadb/managers/Package;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_0
    instance-of v0, p1, Lse/vidstige/jadb/managers/Package;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_1
    check-cast p1, Lse/vidstige/jadb/managers/Package;

    .line 21
    iget-object v0, p0, Lse/vidstige/jadb/managers/Package;->name:Ljava/lang/String;

    iget-object p1, p1, Lse/vidstige/jadb/managers/Package;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lse/vidstige/jadb/managers/Package;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lse/vidstige/jadb/managers/Package;->name:Ljava/lang/String;

    return-object v0
.end method
