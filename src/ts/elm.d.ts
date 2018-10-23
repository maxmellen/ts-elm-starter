export namespace Elm {
  namespace Main {
    interface App {
      ports: {
        alert: { subscribe(callback: (message: string) => void): void };
      };
    }

    function init(opts: { node: HTMLElement }): App;
  }
}
