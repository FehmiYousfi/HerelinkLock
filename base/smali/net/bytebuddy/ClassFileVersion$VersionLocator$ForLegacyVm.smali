.class public final enum Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ClassFileVersion.java"

# interfaces
.implements Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/ClassFileVersion$VersionLocator;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

.field private static final JAVA_VERSION_PROPERTY:Ljava/lang/String; = "java.version"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 354
    new-instance v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    .line 349
    sget-object v2, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;
    .locals 1

    .line 349
    const-class v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;
    .locals 1

    .line 349
    sget-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    invoke-virtual {v0}, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public locate()Lnet/bytebuddy/ClassFileVersion;
    .locals 7

    .line 363
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 364
    fill-array-data v2, :array_0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    const/16 v5, 0x2e

    add-int/lit8 v6, v4, -0x1

    .line 366
    aget v6, v2, v6

    add-int/2addr v6, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    aput v5, v2, v4

    .line 367
    aget v5, v2, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This JVM\'s version string does not seem to be valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_1
    aget v1, v2, v3

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofJavaVersion(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 349
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    const-string v0, "java.version"

    .line 376
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
