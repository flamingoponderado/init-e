import Tools.GenSmallStages
import InitE.SmallStages.Oracles716
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 716 InitE.WordStages.source716.2.1 InitE.WordStages.source716.2.2 InitE.SmallStages.Oracles716.oracle716
