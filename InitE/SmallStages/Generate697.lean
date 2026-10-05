import Tools.GenSmallStages
import InitE.SmallStages.Oracles697
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 697 InitE.WordStages.source697.2.1 InitE.WordStages.source697.2.2 InitE.SmallStages.Oracles697.oracle697
