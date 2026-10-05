import Tools.GenSmallStages
import InitE.SmallStages.Oracles771
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 771 InitE.WordStages.source771.2.1 InitE.WordStages.source771.2.2 InitE.SmallStages.Oracles771.oracle771
