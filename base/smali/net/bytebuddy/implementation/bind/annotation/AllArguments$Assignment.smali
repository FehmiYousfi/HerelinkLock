.class public final enum Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;
.super Ljava/lang/Enum;
.source "AllArguments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/AllArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Assignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

.field public static final enum SLACK:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

.field public static final enum STRICT:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;


# instance fields
.field private final strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "STRICT"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->STRICT:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    .line 78
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    const-string v3, "SLACK"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->SLACK:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    .line 63
    sget-object v3, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->STRICT:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    aput-object v3, v0, v2

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->SLACK:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-boolean p3, p0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->strict:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;
    .locals 1

    .line 63
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;
    .locals 1

    .line 63
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    return-object v0
.end method


# virtual methods
.method protected isStrict()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->strict:Z

    return v0
.end method
