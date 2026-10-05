import Tools.GenSmallStages
import InitE.SmallStages.Oracles486
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 486 InitE.WordStages.source486.2.1 InitE.WordStages.source486.2.2 InitE.SmallStages.Oracles486.oracle486
