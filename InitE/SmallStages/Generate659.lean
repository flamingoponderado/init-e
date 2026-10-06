import Tools.GenSmallStages
import InitE.SmallStages.Oracles659
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 659 InitE.WordStages.source659.2.1 InitE.WordStages.source659.2.2 InitE.SmallStages.Oracles659.oracle659
