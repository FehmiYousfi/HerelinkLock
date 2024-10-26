.class Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;
.super Ljava/lang/Object;
.source "HostConnectionCommand.java"

# interfaces
.implements Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/vidstige/jadb/HostConnectionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResponseValidatorBase"
.end annotation


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final successMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;->successMessage:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method private checkIfAlreadyConnected(Ljava/lang/String;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private checkIfConnectedSuccessfully(Ljava/lang/String;)Z
    .locals 1

    .line 54
    iget-object v0, p0, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;->successMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private extractError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public validate(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lse/vidstige/jadb/ConnectionToRemoteDeviceException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;->checkIfConnectedSuccessfully(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;->checkIfAlreadyConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lse/vidstige/jadb/ConnectionToRemoteDeviceException;

    invoke-direct {p0, p1}, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;->extractError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lse/vidstige/jadb/ConnectionToRemoteDeviceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
