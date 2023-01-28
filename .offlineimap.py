import subprocess

def get_token(email_address):
    cmd = subprocess.run(
        ['mailctl', 'access', '%s' % email_address],
        capture_output=True,
    )
    return cmd.stdout.decode()
