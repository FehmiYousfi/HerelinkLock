.class public Lnet/bytebuddy/description/type/TypeList$Empty;
.super Lnet/bytebuddy/matcher/FilterableList$Empty;
.source "TypeList.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/matcher/FilterableList$Empty<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        "Lnet/bytebuddy/description/type/TypeList;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeList;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$Empty;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toInternalNames()[Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Lnet/bytebuddy/description/type/TypeList$Empty;->NO_INTERFACES:[Ljava/lang/String;

    return-object v0
.end method
