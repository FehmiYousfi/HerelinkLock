.class public final enum Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;
.super Ljava/lang/Enum;
.source "PackageDefinitionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    .line 34
    sget-object v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;
    .locals 1

    .line 34
    const-class v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;
    .locals 1

    .line 34
    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;

    return-object v0
.end method


# virtual methods
.method public define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .locals 0

    .line 43
    sget-object p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    return-object p1
.end method
