import Tools.GenSmallStages
import InitE.SmallStages.Oracles733
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 733 InitE.WordStages.source733.2.1 InitE.WordStages.source733.2.2 InitE.SmallStages.Oracles733.oracle733
