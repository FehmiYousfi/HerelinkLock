.class public abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForHotSpot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;
    }
.end annotation


# static fields
.field private static final ARGUMENT_DELIMITER:Ljava/lang/String; = "="

.field private static final BLANK:[B

.field private static final INSTRUMENT_COMMAND:Ljava/lang/String; = "instrument"

.field private static final LOAD_COMMAND:Ljava/lang/String; = "load"

.field private static final PROTOCOL_VERSION:Ljava/lang/String; = "1"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field protected final processId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    .line 53
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 78
    sput-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->BLANK:[B

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->processId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public loadAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->connect()V

    .line 97
    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 98
    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->BLANK:[B

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 99
    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "load"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 100
    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->BLANK:[B

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 101
    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "instrument"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 102
    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->BLANK:[B

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 103
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 104
    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->BLANK:[B

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object p2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->UTF_8:Ljava/nio/charset/Charset;

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 108
    sget-object p1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->BLANK:[B

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->read([B)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    if-lez v0, :cond_1

    .line 114
    aget-byte v0, p1, v2

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    goto :goto_2

    .line 117
    :cond_2
    aget-byte v0, p1, v2

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    :cond_3
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p2, 0x65

    if-eq p1, p2, :cond_5

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    :goto_3
    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->read([B)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 129
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 131
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Protocol mismatch with target VM"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method protected abstract read([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
