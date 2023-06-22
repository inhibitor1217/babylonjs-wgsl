const LOG_TAG = '[shader-store-wgsl]'

export function debug(...msgs: unknown[]): void {
  console.debug(LOG_TAG, ...msgs)
}

export function warn(...msgs: unknown[]): void {
  console.warn(LOG_TAG, ...msgs)
}
