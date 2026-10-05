import Tools.GenSmallStages
import InitE.SmallStages.Oracles546
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 546 InitE.WordStages.source546.2.1 InitE.WordStages.source546.2.2 InitE.SmallStages.Oracles546.oracle546
