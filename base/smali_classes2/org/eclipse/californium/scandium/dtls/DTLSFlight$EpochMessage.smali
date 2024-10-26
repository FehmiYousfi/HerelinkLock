.class Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;
.super Ljava/lang/Object;
.source "DTLSFlight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/DTLSFlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EpochMessage"
.end annotation


# instance fields
.field private final epoch:I

.field private final message:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;


# direct methods
.method private constructor <init>(ILorg/eclipse/californium/scandium/dtls/DTLSMessage;)V
    .locals 0

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->epoch:I

    .line 772
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->message:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    return-void
.end method

.method synthetic constructor <init>(ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSFlight$1;)V
    .locals 0

    .line 753
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;-><init>(ILorg/eclipse/californium/scandium/dtls/DTLSMessage;)V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)Lorg/eclipse/californium/scandium/dtls/DTLSMessage;
    .locals 0

    .line 753
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->message:Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    return-object p0
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;)I
    .locals 0

    .line 753
    iget p0, p0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight$EpochMessage;->epoch:I

    return p0
.end method
