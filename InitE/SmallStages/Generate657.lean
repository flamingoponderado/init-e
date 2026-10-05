import Tools.GenSmallStages
import InitE.SmallStages.Oracles657
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 657 InitE.WordStages.source657.2.1 InitE.WordStages.source657.2.2 InitE.SmallStages.Oracles657.oracle657
