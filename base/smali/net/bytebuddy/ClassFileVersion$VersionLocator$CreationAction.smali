.class public final enum Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;
.super Ljava/lang/Enum;
.source "ClassFileVersion.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/ClassFileVersion$VersionLocator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 288
    new-instance v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    .line 283
    sget-object v2, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;->$VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;
    .locals 1

    .line 283
    const-class v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;
    .locals 1

    .line 283
    sget-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;->$VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;->run()Lnet/bytebuddy/ClassFileVersion$VersionLocator;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/ClassFileVersion$VersionLocator;
    .locals 5

    .line 294
    :try_start_0
    new-instance v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;

    const-class v1, Ljava/lang/Runtime;

    const-string v2, "version"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "java.lang.Runtime$Version"

    .line 295
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "major"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 297
    :catch_0
    sget-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    return-object v0
.end method
