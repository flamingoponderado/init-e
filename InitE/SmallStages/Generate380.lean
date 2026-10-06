import Tools.GenSmallStages
import InitE.SmallStages.Oracles380
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 380 InitE.WordStages.source380.2.1 InitE.WordStages.source380.2.2 InitE.SmallStages.Oracles380.oracle380
