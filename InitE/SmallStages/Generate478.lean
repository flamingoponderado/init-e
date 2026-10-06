import Tools.GenSmallStages
import InitE.SmallStages.Oracles478
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 478 InitE.WordStages.source478.2.1 InitE.WordStages.source478.2.2 InitE.SmallStages.Oracles478.oracle478
