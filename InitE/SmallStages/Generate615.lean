import Tools.GenSmallStages
import InitE.SmallStages.Oracles615
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 615 InitE.WordStages.source615.2.1 InitE.WordStages.source615.2.2 InitE.SmallStages.Oracles615.oracle615
