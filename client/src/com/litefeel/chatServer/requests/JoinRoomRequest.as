package com.litefeel.chatServer.requests {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class JoinRoomRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HEAD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("com.litefeel.chatServer.requests.JoinRoomRequest.head", "head", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var head:int = 1;

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("com.litefeel.chatServer.requests.JoinRoomRequest.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var type:int = 7;

		/**
		 *  @private
		 */
		public static const ROOMID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("com.litefeel.chatServer.requests.JoinRoomRequest.roomId", "roomId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roomId:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.head);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roomId);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var head$count:uint = 0;
			var type$count:uint = 0;
			var roomId$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (head$count != 0) {
						throw new flash.errors.IOError('Bad data format: JoinRoomRequest.head cannot be set twice.');
					}
					++head$count;
					this.head = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: JoinRoomRequest.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (roomId$count != 0) {
						throw new flash.errors.IOError('Bad data format: JoinRoomRequest.roomId cannot be set twice.');
					}
					++roomId$count;
					this.roomId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
