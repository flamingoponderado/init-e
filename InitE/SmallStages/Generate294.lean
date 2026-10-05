import Tools.GenSmallStages
import InitE.SmallStages.Oracles294
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 294 InitE.WordStages.source294.2.1 InitE.WordStages.source294.2.2 InitE.SmallStages.Oracles294.oracle294
