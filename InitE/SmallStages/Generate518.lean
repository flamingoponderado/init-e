import Tools.GenSmallStages
import InitE.SmallStages.Oracles518
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 518 InitE.WordStages.source518.2.1 InitE.WordStages.source518.2.2 InitE.SmallStages.Oracles518.oracle518
