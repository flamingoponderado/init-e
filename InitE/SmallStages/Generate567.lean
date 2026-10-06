import Tools.GenSmallStages
import InitE.SmallStages.Oracles567
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 567 InitE.WordStages.source567.2.1 InitE.WordStages.source567.2.2 InitE.SmallStages.Oracles567.oracle567
