import Tools.GenSmallStages
import InitE.SmallStages.Oracles790
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 790 InitE.WordStages.source790.2.1 InitE.WordStages.source790.2.2 InitE.SmallStages.Oracles790.oracle790
