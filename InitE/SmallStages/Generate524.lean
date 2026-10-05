import Tools.GenSmallStages
import InitE.SmallStages.Oracles524
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 524 InitE.WordStages.source524.2.1 InitE.WordStages.source524.2.2 InitE.SmallStages.Oracles524.oracle524
