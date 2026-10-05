import Tools.GenSmallStages
import InitE.SmallStages.Oracles739
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 739 InitE.WordStages.source739.2.1 InitE.WordStages.source739.2.2 InitE.SmallStages.Oracles739.oracle739
