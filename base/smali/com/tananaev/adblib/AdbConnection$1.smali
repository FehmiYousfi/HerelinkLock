.class Lcom/tananaev/adblib/AdbConnection$1;
.super Ljava/lang/Object;
.source "AdbConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tananaev/adblib/AdbConnection;->createConnectionThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tananaev/adblib/AdbConnection;

.field final synthetic val$conn:Lcom/tananaev/adblib/AdbConnection;


# direct methods
.method constructor <init>(Lcom/tananaev/adblib/AdbConnection;Lcom/tananaev/adblib/AdbConnection;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/tananaev/adblib/AdbConnection$1;->this$0:Lcom/tananaev/adblib/AdbConnection;

    iput-object p2, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 134
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection$1;->this$0:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v0}, Lcom/tananaev/adblib/AdbConnection;->access$000(Lcom/tananaev/adblib/AdbConnection;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection$1;->this$0:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v0}, Lcom/tananaev/adblib/AdbConnection;->access$100(Lcom/tananaev/adblib/AdbConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->parseAdbMessage(Ljava/io/InputStream;)Lcom/tananaev/adblib/AdbProtocol$AdbMessage;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/tananaev/adblib/AdbProtocol;->validateMessage(Lcom/tananaev/adblib/AdbProtocol$AdbMessage;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    iget v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->command:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 214
    :sswitch_0
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    iget-object v3, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    iget v0, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->arg1:I

    invoke-static {v3, v0}, Lcom/tananaev/adblib/AdbConnection;->access$802(Lcom/tananaev/adblib/AdbConnection;I)I

    .line 219
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v0, v2}, Lcom/tananaev/adblib/AdbConnection;->access$202(Lcom/tananaev/adblib/AdbConnection;Z)Z

    .line 220
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 186
    :sswitch_1
    iget v1, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->arg0:I

    if-ne v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v1}, Lcom/tananaev/adblib/AdbConnection;->access$400(Lcom/tananaev/adblib/AdbConnection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection$1;->this$0:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v0}, Lcom/tananaev/adblib/AdbConnection;->access$500(Lcom/tananaev/adblib/AdbConnection;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 196
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    .line 197
    invoke-static {v1}, Lcom/tananaev/adblib/AdbConnection;->access$700(Lcom/tananaev/adblib/AdbConnection;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tananaev/adblib/AdbCrypto;->getAdbPublicKeyPayload()[B

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/tananaev/adblib/AdbProtocol;->generateAuth(I[B)[B

    move-result-object v0

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection$1;->this$0:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v0, v2}, Lcom/tananaev/adblib/AdbConnection;->access$602(Lcom/tananaev/adblib/AdbConnection;Z)Z

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    const/4 v1, 0x2

    .line 200
    iget-object v3, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    .line 201
    invoke-static {v3}, Lcom/tananaev/adblib/AdbConnection;->access$700(Lcom/tananaev/adblib/AdbConnection;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v3

    iget-object v0, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payload:[B

    invoke-virtual {v3, v0}, Lcom/tananaev/adblib/AdbCrypto;->signAdbTokenPayload([B)[B

    move-result-object v0

    .line 200
    invoke-static {v1, v0}, Lcom/tananaev/adblib/AdbProtocol;->generateAuth(I[B)[B

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v1, v2}, Lcom/tananaev/adblib/AdbConnection;->access$402(Lcom/tananaev/adblib/AdbConnection;Z)Z

    .line 206
    :goto_1
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v1, v1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    :try_start_3
    iget-object v2, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v2, v2, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 208
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v0, v0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 209
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 149
    :sswitch_2
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v1}, Lcom/tananaev/adblib/AdbConnection;->access$200(Lcom/tananaev/adblib/AdbConnection;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->this$0:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v1}, Lcom/tananaev/adblib/AdbConnection;->access$300(Lcom/tananaev/adblib/AdbConnection;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v3, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tananaev/adblib/AdbStream;

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 157
    :cond_5
    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 158
    :try_start_5
    iget v3, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->command:I

    const v4, 0x59414b4f

    if-ne v3, v4, :cond_6

    .line 160
    iget v0, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->arg0:I

    invoke-virtual {v1, v0}, Lcom/tananaev/adblib/AdbStream;->updateRemoteId(I)V

    .line 161
    invoke-virtual {v1}, Lcom/tananaev/adblib/AdbStream;->readyForWrite()V

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_2

    .line 165
    :cond_6
    iget v3, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->command:I

    const v4, 0x45545257

    if-ne v3, v4, :cond_7

    .line 167
    iget-object v0, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->payload:[B

    invoke-virtual {v1, v0}, Lcom/tananaev/adblib/AdbStream;->addPayload([B)V

    .line 170
    invoke-virtual {v1}, Lcom/tananaev/adblib/AdbStream;->sendReady()V

    goto :goto_2

    .line 171
    :cond_7
    iget v3, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->command:I

    const v4, 0x45534c43

    if-ne v3, v4, :cond_8

    .line 173
    iget-object v3, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v3}, Lcom/tananaev/adblib/AdbConnection;->access$300(Lcom/tananaev/adblib/AdbConnection;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget v0, v0, Lcom/tananaev/adblib/AdbProtocol$AdbMessage;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {v1, v2}, Lcom/tananaev/adblib/AdbStream;->notifyClose(Z)V

    .line 178
    :cond_8
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 236
    :catch_0
    :cond_9
    iget-object v0, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    monitor-enter v0

    .line 237
    :try_start_7
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->this$0:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v1}, Lcom/tananaev/adblib/AdbConnection;->access$900(Lcom/tananaev/adblib/AdbConnection;)V

    .line 238
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 239
    iget-object v1, p0, Lcom/tananaev/adblib/AdbConnection$1;->val$conn:Lcom/tananaev/adblib/AdbConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tananaev/adblib/AdbConnection;->access$1002(Lcom/tananaev/adblib/AdbConnection;Z)Z

    .line 240
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_2
        0x45545257 -> :sswitch_2
        0x48545541 -> :sswitch_1
        0x4e584e43 -> :sswitch_0
        0x59414b4f -> :sswitch_2
    .end sparse-switch
.end method
