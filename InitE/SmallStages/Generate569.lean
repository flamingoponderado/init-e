import Tools.GenSmallStages
import InitE.SmallStages.Oracles569
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 569 InitE.WordStages.source569.2.1 InitE.WordStages.source569.2.2 InitE.SmallStages.Oracles569.oracle569
