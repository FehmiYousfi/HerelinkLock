.class public final enum Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;
.super Ljava/lang/Enum;
.source "PackageDefinitionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Undefined"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 147
    new-instance v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    .line 142
    sget-object v2, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;
    .locals 1

    .line 142
    const-class v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;
    .locals 1

    .line 142
    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    return-object v0
.end method


# virtual methods
.method public getImplementationTitle()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSealBase()Ljava/net/URL;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCompatibleTo(Ljava/lang/Package;)Z
    .locals 1

    .line 191
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot check compatibility to undefined package"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDefined()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
