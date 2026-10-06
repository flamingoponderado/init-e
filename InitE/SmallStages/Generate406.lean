import Tools.GenSmallStages
import InitE.SmallStages.Oracles406
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 406 InitE.WordStages.source406.2.1 InitE.WordStages.source406.2.2 InitE.SmallStages.Oracles406.oracle406
