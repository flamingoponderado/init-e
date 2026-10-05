import Tools.GenSmallStages
import InitE.SmallStages.Oracles384
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 384 InitE.WordStages.source384.2.1 InitE.WordStages.source384.2.2 InitE.SmallStages.Oracles384.oracle384
