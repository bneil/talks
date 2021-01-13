<script>
    let result = null;

    async function doBackendGet() {
        const res = await fetch('http://localhost:8081/')
        const json = await res.json()
        result = JSON.stringify(json)
        window.document.body.classList.toggle('dark-mode')
    }

</script>

<main>
    <h1>Welcome to the Frontend</h1>
    <button type="button" on:click={doBackendGet}>
        Test Out The Backend
    </button>
    <p>
        Result:
    </p>
    <pre>
{result}
</pre>
</main>

<style>
    main {
        text-align: center;
        padding: 1em;
        max-width: 240px;
        margin: 0 auto;
    }

    :global(body) {
        background-color: #f2eee2;
        color: #0084f6;
        transition: background-color 0.3s
    }

    :global(body.dark-mode) {
        background-color: #1d3040;
        color: #bfc2c7;
    }

    h1 {
        color: #ff3e00;
        text-transform: uppercase;
        font-size: 2em;
        font-weight: 100;
    }

    @media (min-width: 640px) {
        main {
            max-width: none;
        }
    }
</style>
