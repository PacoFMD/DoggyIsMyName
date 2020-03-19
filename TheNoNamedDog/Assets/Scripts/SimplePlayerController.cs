using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimplePlayerController : MonoBehaviour
{
    // Start is called before the first frame update

    public float m_speed;
    public float m_radius = 2;
    public float m_radiusDuration;
    public GameObject m_sphere;

    private float m_currentRadius;
    private IEnumerator m_growSequence;

    // Update is called once per frame
    void Update()
    {
        transform.Translate(new Vector3(
                Input.GetAxis("Horizontal"),
                0,
                Input.GetAxis("Vertical")) * m_speed * Time.deltaTime
            );

        if (Input.GetKeyDown(KeyCode.Space))
        {
            StartCoroutine(GrowRadius());
        }

        Shader.SetGlobalVector("_PlayerPosition", new Vector4(transform.position.x, transform.position.y, transform.position.z, 0));
        Shader.SetGlobalFloat("_Radius", m_currentRadius);
        m_sphere.transform.localScale = Vector3.one * m_currentRadius * 2;
        
    }

    IEnumerator GrowRadius()
    {
        float startTime = Time.time;
        m_currentRadius = 0;
        while (Time.time < startTime + m_radiusDuration)
        {
            m_currentRadius = Mathf.Lerp(0,1,Mathf.InverseLerp(startTime,startTime+m_radiusDuration,Time.time)) * m_radius;
            yield return null;
        }
        startTime = Time.time;
        m_currentRadius = 1;
        while(Time.time < startTime + m_radiusDuration)
        {
            m_currentRadius = (1 - Mathf.Lerp(0,1, Mathf.InverseLerp(startTime,startTime+m_radiusDuration,Time.time)))*m_radius;
            yield return null;
        }
        m_currentRadius = 0;
        yield return null;

    }
}
